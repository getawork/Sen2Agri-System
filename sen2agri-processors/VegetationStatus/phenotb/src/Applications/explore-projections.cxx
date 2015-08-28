/*=========================================================================

  Program:   phenotb
  Language:  C++

  Copyright (c) Jordi Inglada. All rights reserved.

  See phenotb-copyright.txt for details.

  This software is distributed WITHOUT ANY WARRANTY; without even
  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
  PURPOSE.  See the above copyright notices for more information.

=========================================================================*/

#include "dateUtils.h"
#include "phenoFunctions.h"
#include <iostream>
#include <limits>
#include <algorithm>


namespace pheno{
struct DifferentSizes{};
struct NullVectorSize{};

double mean(const VectorType& x)
{
  if(x.size()==0) throw NullVectorSize();
  double res{0};
  std::for_each(std::begin(x), std::end(x),
                [&](double v){
                res += v;
                });
  return res/x.size();
}

double stdev(const VectorType& x, double m)
{
  if(x.size()==0) throw NullVectorSize();
  double res{0};
  std::for_each(std::begin(x), std::end(x),
                [&](double v){
                res += vnl_math_sqr(v-m);
                });
  return sqrt(res/x.size());
}

double dot_prod(const VectorType& x1, const VectorType& x2)
{
  if(x1.size()!=x2.size()) throw DifferentSizes();

  double res{0};

  double m1{mean(x1)};
  double m2{mean(x2)};
  double v1{stdev(x1,m1)};
  double v2{stdev(x2,m2)};

  for(size_t i=0; i<x1.size(); i++)
    res+=(x1[i]-m1)*(x2[i]-m2);

  return res/(v1*v2);
  
}

}

int main(int argc, char* argv[])
{
  if(argc!=2)
    {
    std::cerr << "Usage: " << argv[0] << " filename";
    exit(1);
    }

  auto dates = pheno::parse_dates_sirhyus(argv[1]);

  pheno::VectorType doys(dates.size());
  for(size_t i=0; i<dates.size(); i++)
    {
    doys[i]=pheno::doy(dates[i]);
    }
  
  std::cout << "There are " << dates.size() << " dates.\n";

  auto phF(pheno::normalized_sigmoid::F<pheno::VectorType>);
  pheno::VectorType x1(4);
  x1[0] = 75; x1[1] = 21; x1[2] = 150; x1[3] = 15;
  pheno::VectorType f1{phF(doys, x1)};

  pheno::VectorType x2(4);
  x2[0] = 200; x2[1] = 21; x2[2] = 275; x2[3] = 15;
  pheno::VectorType f2{phF(doys, x2)};

  f1 = f1+0.25*f2;
  
  double t0min{0};
  double t1max{doys[dates.size()-1]};
  double drmin{1};
  double drmax{30};
  double tstep{4};
  double drstep{2};

  double max_dot_prod{std::numeric_limits<double>::min()};
  pheno::VectorType best_x(4);

  auto xt = x1;
  for(auto t0=t0min; t0<t1max; t0+=tstep)
    for(auto t1=t0; t1<t1max; t1+=tstep)
      if(t0<t1)
        for(auto dr0=drmin; dr0<drmax; dr0+=drstep)
          for(auto dr1=drmin; dr1<drmax; dr1+=drstep)
            {
            xt[0] = t0; xt[1] = dr0; xt[2] = t1; xt[3] = dr1;
            auto dp = pheno::dot_prod(f1,phF(doys, xt));
            if(max_dot_prod<dp)
              {
              max_dot_prod = dp;
              best_x = xt;
              }
            }

  std::cout << x1 << " / " << best_x << " --> " << max_dot_prod << std::endl;
  std::cout << pheno::dot_prod(f1,f1) << std::endl;

  pheno::VectorType best_f{phF(doys, best_x)};

  for(size_t i=0; i<dates.size(); i++)
    {
    std::cout << doys[i] << " " << f1[i] << " " << best_f[i] << std::endl;
    }
  return 0;
}