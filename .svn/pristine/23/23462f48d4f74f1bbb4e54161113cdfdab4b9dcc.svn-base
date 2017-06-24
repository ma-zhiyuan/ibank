package org.lanqiao.bank.base.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class CreditrepaymentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CreditrepaymentExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCardIdIsNull() {
            addCriterion("card_id is null");
            return (Criteria) this;
        }

        public Criteria andCardIdIsNotNull() {
            addCriterion("card_id is not null");
            return (Criteria) this;
        }

        public Criteria andCardIdEqualTo(Integer value) {
            addCriterion("card_id =", value, "cardId");
            return (Criteria) this;
        }

        public Criteria andCardIdNotEqualTo(Integer value) {
            addCriterion("card_id <>", value, "cardId");
            return (Criteria) this;
        }

        public Criteria andCardIdGreaterThan(Integer value) {
            addCriterion("card_id >", value, "cardId");
            return (Criteria) this;
        }

        public Criteria andCardIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("card_id >=", value, "cardId");
            return (Criteria) this;
        }

        public Criteria andCardIdLessThan(Integer value) {
            addCriterion("card_id <", value, "cardId");
            return (Criteria) this;
        }

        public Criteria andCardIdLessThanOrEqualTo(Integer value) {
            addCriterion("card_id <=", value, "cardId");
            return (Criteria) this;
        }

        public Criteria andCardIdIn(List<Integer> values) {
            addCriterion("card_id in", values, "cardId");
            return (Criteria) this;
        }

        public Criteria andCardIdNotIn(List<Integer> values) {
            addCriterion("card_id not in", values, "cardId");
            return (Criteria) this;
        }

        public Criteria andCardIdBetween(Integer value1, Integer value2) {
            addCriterion("card_id between", value1, value2, "cardId");
            return (Criteria) this;
        }

        public Criteria andCardIdNotBetween(Integer value1, Integer value2) {
            addCriterion("card_id not between", value1, value2, "cardId");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyIsNull() {
            addCriterion("repay_money is null");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyIsNotNull() {
            addCriterion("repay_money is not null");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyEqualTo(Double value) {
            addCriterion("repay_money =", value, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyNotEqualTo(Double value) {
            addCriterion("repay_money <>", value, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyGreaterThan(Double value) {
            addCriterion("repay_money >", value, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("repay_money >=", value, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyLessThan(Double value) {
            addCriterion("repay_money <", value, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyLessThanOrEqualTo(Double value) {
            addCriterion("repay_money <=", value, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyIn(List<Double> values) {
            addCriterion("repay_money in", values, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyNotIn(List<Double> values) {
            addCriterion("repay_money not in", values, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyBetween(Double value1, Double value2) {
            addCriterion("repay_money between", value1, value2, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andRepayMoneyNotBetween(Double value1, Double value2) {
            addCriterion("repay_money not between", value1, value2, "repayMoney");
            return (Criteria) this;
        }

        public Criteria andLoanIdIsNull() {
            addCriterion("loan_id is null");
            return (Criteria) this;
        }

        public Criteria andLoanIdIsNotNull() {
            addCriterion("loan_id is not null");
            return (Criteria) this;
        }

        public Criteria andLoanIdEqualTo(Integer value) {
            addCriterion("loan_id =", value, "loanId");
            return (Criteria) this;
        }

        public Criteria andLoanIdNotEqualTo(Integer value) {
            addCriterion("loan_id <>", value, "loanId");
            return (Criteria) this;
        }

        public Criteria andLoanIdGreaterThan(Integer value) {
            addCriterion("loan_id >", value, "loanId");
            return (Criteria) this;
        }

        public Criteria andLoanIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("loan_id >=", value, "loanId");
            return (Criteria) this;
        }

        public Criteria andLoanIdLessThan(Integer value) {
            addCriterion("loan_id <", value, "loanId");
            return (Criteria) this;
        }

        public Criteria andLoanIdLessThanOrEqualTo(Integer value) {
            addCriterion("loan_id <=", value, "loanId");
            return (Criteria) this;
        }

        public Criteria andLoanIdIn(List<Integer> values) {
            addCriterion("loan_id in", values, "loanId");
            return (Criteria) this;
        }

        public Criteria andLoanIdNotIn(List<Integer> values) {
            addCriterion("loan_id not in", values, "loanId");
            return (Criteria) this;
        }

        public Criteria andLoanIdBetween(Integer value1, Integer value2) {
            addCriterion("loan_id between", value1, value2, "loanId");
            return (Criteria) this;
        }

        public Criteria andLoanIdNotBetween(Integer value1, Integer value2) {
            addCriterion("loan_id not between", value1, value2, "loanId");
            return (Criteria) this;
        }

        public Criteria andRepayTimeIsNull() {
            addCriterion("repay_time is null");
            return (Criteria) this;
        }

        public Criteria andRepayTimeIsNotNull() {
            addCriterion("repay_time is not null");
            return (Criteria) this;
        }

        public Criteria andRepayTimeEqualTo(Date value) {
            addCriterionForJDBCDate("repay_time =", value, "repayTime");
            return (Criteria) this;
        }

        public Criteria andRepayTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("repay_time <>", value, "repayTime");
            return (Criteria) this;
        }

        public Criteria andRepayTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("repay_time >", value, "repayTime");
            return (Criteria) this;
        }

        public Criteria andRepayTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("repay_time >=", value, "repayTime");
            return (Criteria) this;
        }

        public Criteria andRepayTimeLessThan(Date value) {
            addCriterionForJDBCDate("repay_time <", value, "repayTime");
            return (Criteria) this;
        }

        public Criteria andRepayTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("repay_time <=", value, "repayTime");
            return (Criteria) this;
        }

        public Criteria andRepayTimeIn(List<Date> values) {
            addCriterionForJDBCDate("repay_time in", values, "repayTime");
            return (Criteria) this;
        }

        public Criteria andRepayTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("repay_time not in", values, "repayTime");
            return (Criteria) this;
        }

        public Criteria andRepayTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("repay_time between", value1, value2, "repayTime");
            return (Criteria) this;
        }

        public Criteria andRepayTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("repay_time not between", value1, value2, "repayTime");
            return (Criteria) this;
        }

        public Criteria andIsRepayIsNull() {
            addCriterion("is_repay is null");
            return (Criteria) this;
        }

        public Criteria andIsRepayIsNotNull() {
            addCriterion("is_repay is not null");
            return (Criteria) this;
        }

        public Criteria andIsRepayEqualTo(Integer value) {
            addCriterion("is_repay =", value, "isRepay");
            return (Criteria) this;
        }

        public Criteria andIsRepayNotEqualTo(Integer value) {
            addCriterion("is_repay <>", value, "isRepay");
            return (Criteria) this;
        }

        public Criteria andIsRepayGreaterThan(Integer value) {
            addCriterion("is_repay >", value, "isRepay");
            return (Criteria) this;
        }

        public Criteria andIsRepayGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_repay >=", value, "isRepay");
            return (Criteria) this;
        }

        public Criteria andIsRepayLessThan(Integer value) {
            addCriterion("is_repay <", value, "isRepay");
            return (Criteria) this;
        }

        public Criteria andIsRepayLessThanOrEqualTo(Integer value) {
            addCriterion("is_repay <=", value, "isRepay");
            return (Criteria) this;
        }

        public Criteria andIsRepayIn(List<Integer> values) {
            addCriterion("is_repay in", values, "isRepay");
            return (Criteria) this;
        }

        public Criteria andIsRepayNotIn(List<Integer> values) {
            addCriterion("is_repay not in", values, "isRepay");
            return (Criteria) this;
        }

        public Criteria andIsRepayBetween(Integer value1, Integer value2) {
            addCriterion("is_repay between", value1, value2, "isRepay");
            return (Criteria) this;
        }

        public Criteria andIsRepayNotBetween(Integer value1, Integer value2) {
            addCriterion("is_repay not between", value1, value2, "isRepay");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}