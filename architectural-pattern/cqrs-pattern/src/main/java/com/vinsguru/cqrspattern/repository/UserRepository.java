package com.vinsguru.cqrspattern.repository;

import com.vinsguru.cqrspattern.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<Customer, Long> {
}
