package kr.or;

import lombok.Data;

import kr.or.nextit.spring_project.board.BoardMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.Assert;

import javax.sql.DataSource;
import java.sql.SQLException;


@Data
@SpringBootTest
public class DatabaseConnectionTest {

    // @Autowired
    private final DataSource dataSource;


    @Test
    public void dbConnectionTest() throws SQLException {
        DataSource dataSource1 = (DataSource) dataSource.getConnection();
        Assert.notNull(dataSource1, "must not null");
    }
}
