package com.capbank.capbankserver.repositories;

import com.capbank.capbankserver.models.Transactions;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface TransactHistoryRepository extends CrudRepository<Transactions, Integer> {
    @Query(value = "SELECT * FROM v_transactions WHERE user_id = :user_id", nativeQuery = true)
    List<Transactions> getTransactionRecordsById(@Param("user_id")int user_id);
}
