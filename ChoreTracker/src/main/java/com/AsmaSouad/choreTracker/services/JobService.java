package com.AsmaSouad.choreTracker.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.AsmaSouad.choreTracker.models.Job;
import com.AsmaSouad.choreTracker.repositories.JobRepository;

@Service
public class JobService {
	@Autowired
	private JobRepository jobRepo;
	
	
	public List<Job> allJobs(){
		return jobRepo.findAll();
	}

}
