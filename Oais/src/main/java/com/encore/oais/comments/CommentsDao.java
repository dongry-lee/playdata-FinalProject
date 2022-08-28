
package com.encore.oais.comments;

import com.encore.oais.allboard.AllBoard;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import java.net.ConnectException;
import java.util.ArrayList;

@Repository
public interface CommentsDao extends JpaRepository<Comments, Integer> {
    ArrayList<Comments> findByWnum(AllBoard wnum);
}

