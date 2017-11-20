.class public final Lcom/google/googlenav/datarequest/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Vector;

.field final b:Z

.field final c:Z

.field final synthetic d:Lcom/google/googlenav/datarequest/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/datarequest/i;Ljava/util/Vector;)V
    .locals 1

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 564
    iput-object p2, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    .line 568
    invoke-static {p2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Ljava/util/Vector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/j;->b:Z

    .line 569
    invoke-static {p2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Ljava/util/Vector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/j;->c:Z

    .line 570
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 948
    const/4 v0, 0x0

    .line 949
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    .line 950
    invoke-static {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Ljava/util/Vector;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 956
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/g;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    move-object v1, v0

    .line 963
    :goto_0
    if-eqz v1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/b/a;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 965
    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 971
    :goto_1
    new-instance v1, Lcom/google/googlenav/datarequest/b;

    invoke-direct {v1, v0}, Lcom/google/googlenav/datarequest/b;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    .line 972
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 974
    instance-of v0, v0, Lcom/google/googlenav/datarequest/b;

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 983
    :goto_2
    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    goto :goto_1

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/datarequest/h;)V
    .locals 15

    .prologue
    .line 716
    const/4 v6, 0x0

    .line 717
    const/4 v5, 0x0

    .line 719
    const/4 v4, 0x0

    .line 721
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k:Lcom/google/googlenav/datarequest/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/Object;)V

    .line 730
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 731
    invoke-direct {p0, v2}, Lcom/google/googlenav/datarequest/j;->a(Ljava/io/OutputStream;)V

    .line 734
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "DRD"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v0, ""

    .line 737
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 738
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, "|"

    .line 740
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 743
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    .line 753
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    invoke-static/range {p1 .. p1}, Lcom/google/googlenav/datarequest/h;->c(Lcom/google/googlenav/datarequest/h;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    invoke-interface {v0, v1, v7}, Lcom/google/googlenav/common/io/i;->a(Ljava/lang/String;Z)Lcom/google/googlenav/common/io/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 754
    :try_start_1
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connection opened to:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/googlenav/datarequest/h;->c(Lcom/google/googlenav/datarequest/h;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-interface {v0, v1, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    const-string v0, "Content-Type"

    const-string v1, "application/binary"

    invoke-interface {v8, v0, v1}, Lcom/google/googlenav/common/io/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v0, "Content-Length"

    array-length v1, v10

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/google/googlenav/common/io/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Open Connection"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    invoke-interface {v8}, Lcom/google/googlenav/common/io/f;->a()Ljava/io/DataOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v7

    .line 761
    :try_start_2
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 762
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget v1, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->h:I

    array-length v5, v10

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->h:I

    .line 764
    invoke-interface {v8}, Lcom/google/googlenav/common/io/f;->b()Ljava/io/DataInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v6

    .line 765
    :try_start_3
    invoke-interface {v8}, Lcom/google/googlenav/common/io/f;->c()I

    move-result v0

    .line 766
    invoke-interface {v8}, Lcom/google/googlenav/common/io/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 767
    iget-object v4, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v4, v4, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/common/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    sub-long v11, v4, v2

    .line 769
    const-string v4, ", "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-wide/16 v4, 0x3e8

    cmp-long v4, v11, v4

    if-gez v4, :cond_4

    .line 771
    const-string v4, "<1s"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/datarequest/j;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 777
    invoke-interface {v8}, Lcom/google/googlenav/common/io/f;->e()J

    move-result-wide v0

    long-to-int v13, v0

    .line 778
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget v1, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i:I

    .line 780
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 781
    const/16 v1, 0x17

    if-eq v0, v1, :cond_a

    .line 783
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 819
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    if-eqz v6, :cond_1

    .line 822
    :try_start_4
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 828
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 829
    :try_start_5
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 835
    :cond_2
    :goto_3
    if-eqz v8, :cond_3

    .line 836
    :try_start_6
    invoke-interface {v8}, Lcom/google/googlenav/common/io/f;->close()V

    .line 837
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Close"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 844
    :cond_3
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 845
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 846
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->retryOnFailure()Z

    move-result v3

    if-nez v3, :cond_8

    .line 847
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Error processing: %s not retrying"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    iget-object v3, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v3, v3, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/d;)V

    goto :goto_5

    .line 773
    :cond_4
    const-wide/16 v4, 0x3e8

    :try_start_7
    div-long v4, v11, v4

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 819
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move-object v0, v6

    :goto_6
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    if-eqz v0, :cond_5

    .line 822
    :try_start_8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 828
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 829
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 835
    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    .line 836
    :try_start_a
    invoke-interface {v3}, Lcom/google/googlenav/common/io/f;->close()V

    .line 837
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Close"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 844
    :cond_7
    :goto_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 845
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 846
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->retryOnFailure()Z

    move-result v4

    if-nez v4, :cond_13

    .line 847
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Error processing: %s not retrying"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    iget-object v4, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v4, v4, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/d;)V

    goto :goto_a

    .line 824
    :catch_0
    move-exception v0

    .line 825
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error closing input stream."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 831
    :catch_1
    move-exception v0

    .line 832
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error closing output stream."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 839
    :catch_2
    move-exception v0

    .line 840
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error closing hc."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 850
    :cond_8
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Retrying: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 855
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 856
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 858
    :goto_b
    return-void

    .line 787
    :cond_a
    :try_start_b
    invoke-direct {p0, v6}, Lcom/google/googlenav/datarequest/j;->a(Ljava/io/DataInputStream;)V

    .line 789
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 790
    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 792
    const/16 v0, 0x16

    const-string v1, "fb"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v14, 0x14

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 793
    invoke-static {v0, v1, v4}, Lcom/google/googlenav/common/h;->a(ILjava/lang/String;Ljava/lang/String;)Z

    .line 795
    const/16 v0, 0x16

    const-string v1, "lb"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v14, 0xb

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 796
    invoke-static {v0, v1, v4}, Lcom/google/googlenav/common/h;->a(ILjava/lang/String;Ljava/lang/String;)Z

    .line 799
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k:Lcom/google/googlenav/datarequest/c;

    long-to-int v4, v11

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/Object;JII)V

    .line 803
    const/16 v0, 0x2000

    if-lt v13, v0, :cond_b

    int-to-long v0, v5

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    .line 805
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    mul-int/lit16 v1, v13, 0x3e8

    div-int/2addr v1, v5

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;I)I

    .line 807
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Sent %s, Loaded %s bytes.  Byte/Sec = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, v10

    .line 808
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v4, v4, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 807
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    :cond_b
    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    const/16 v0, 0x3e8

    if-ge v13, v0, :cond_10

    .line 812
    const-string v0, "<1kb"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 819
    :cond_c
    :goto_c
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    if-eqz v6, :cond_d

    .line 822
    :try_start_c
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 828
    :cond_d
    :goto_d
    if-eqz v7, :cond_e

    .line 829
    :try_start_d
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 835
    :cond_e
    :goto_e
    if-eqz v8, :cond_f

    .line 836
    :try_start_e
    invoke-interface {v8}, Lcom/google/googlenav/common/io/f;->close()V

    .line 837
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Close"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 844
    :cond_f
    :goto_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 845
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 846
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->retryOnFailure()Z

    move-result v3

    if-nez v3, :cond_11

    .line 847
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Error processing: %s not retrying"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    iget-object v3, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v3, v3, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/d;)V

    goto :goto_10

    .line 814
    :cond_10
    :try_start_f
    div-int/lit16 v0, v13, 0x3e8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_c

    .line 824
    :catch_3
    move-exception v0

    .line 825
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error closing input stream."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 831
    :catch_4
    move-exception v0

    .line 832
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error closing output stream."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 839
    :catch_5
    move-exception v0

    .line 840
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error closing hc."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 850
    :cond_11
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Retrying: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 855
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 856
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b

    .line 824
    :catch_6
    move-exception v0

    .line 825
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Error closing input stream."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 831
    :catch_7
    move-exception v0

    .line 832
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "Error closing output stream."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 839
    :catch_8
    move-exception v0

    .line 840
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Error closing hc."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 850
    :cond_13
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Retrying: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 855
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 856
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 857
    throw v1

    .line 819
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    move-object v0, v4

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    move-object v3, v8

    move-object v0, v4

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move-object v0, v4

    goto/16 :goto_6
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 870
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 872
    const/4 v1, 0x0

    move v2, v0

    .line 874
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/datarequest/j;->a(Ljava/io/DataInput;Lcom/google/googlenav/datarequest/d;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 877
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 904
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 907
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 909
    return-void

    .line 880
    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 881
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "IOException: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    instance-of v4, v0, Ljava/io/EOFException;

    if-eqz v4, :cond_3

    .line 886
    invoke-interface {v1}, Lcom/google/googlenav/datarequest/d;->onServerFailure()V

    .line 888
    sget-boolean v4, Lcom/google/googlenav/common/d;->a:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v4, v4, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-boolean v4, v4, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d:Z

    if-eqz v4, :cond_3

    .line 889
    invoke-interface {v1}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v1

    .line 890
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "No server support for data request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 891
    iget-object v4, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v4, v4, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v4, v4, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    invoke-interface {v4}, Lcom/google/googlenav/common/io/i;->a()Z

    move-result v4

    .line 892
    iget-object v5, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v5, v5, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZLjava/lang/String;)V

    .line 896
    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 903
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 904
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    iget-object v4, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 906
    :cond_4
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 907
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    throw v0

    .line 897
    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 898
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "RunTimeException: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 897
    :catch_2
    move-exception v0

    goto :goto_2

    .line 880
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 993
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 995
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/j;->a()V

    .line 997
    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 998
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 999
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->h(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 1005
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1006
    invoke-interface {v0, v1}, Lcom/google/googlenav/datarequest/d;->writeRequestData(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 1008
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1009
    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 647
    const/16 v2, 0x1f5

    if-ne p1, v2, :cond_0

    .line 651
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(I)V

    .line 698
    :goto_0
    return v0

    .line 655
    :cond_0
    const/16 v2, 0xc8

    if-eq p1, v2, :cond_4

    .line 656
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Bad HTTP response code: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_3

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Server 500 for request types: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    const-string v0, ""

    .line 665
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 666
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->onServerFailure()V

    .line 667
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v1, ","

    .line 669
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 672
    :cond_1
    sget-boolean v0, Lcom/google/googlenav/common/d;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-boolean v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d:Z

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    invoke-interface {v0}, Lcom/google/googlenav/common/io/i;->a()Z

    move-result v0

    .line 674
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v3, 0x7

    .line 675
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZLjava/lang/String;)V

    .line 685
    :cond_2
    new-instance v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher$GmmServerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Serverside failure (HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher$GmmServerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Bad HTTP response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_4
    const-string v2, "application/binary"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 692
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Bad HTTP content type: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad HTTP content type: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v0, v1

    .line 698
    goto/16 :goto_0
.end method

.method private a(Ljava/io/DataInput;Lcom/google/googlenav/datarequest/d;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 922
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Processing DataRequest: %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 925
    invoke-interface {p2}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 926
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Expecting request type: %s got: %s.  ABORTING!"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 927
    invoke-interface {p2}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 926
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    new-instance v0, Ljava/io/IOException;

    .line 929
    invoke-interface {p2}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "RT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/googlenav/datarequest/d;->readResponseData(Ljava/io/DataInput;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 937
    if-eq p2, p0, :cond_1

    invoke-interface {p2}, Lcom/google/googlenav/datarequest/d;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 938
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/d;)V

    .line 944
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 590
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 591
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/h;->a(Lcom/google/googlenav/datarequest/h;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 593
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 595
    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 600
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 603
    :try_start_4
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/datarequest/j;->a(Lcom/google/googlenav/datarequest/h;)V

    .line 604
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/i;->a(Z)Z

    .line 605
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V

    .line 606
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;J)J
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/googlenav/datarequest/DataRequestDispatcher$GmmServerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    :try_start_5
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v1, v0}, Lcom/google/googlenav/datarequest/h;->a(Lcom/google/googlenav/datarequest/h;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 627
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-boolean v2, p0, Lcom/google/googlenav/datarequest/j;->b:Z

    iget-boolean v3, p0, Lcom/google/googlenav/datarequest/j;->c:Z

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ZZ)V

    .line 631
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v1}, Lcom/google/googlenav/datarequest/h;->b(Lcom/google/googlenav/datarequest/h;)V

    throw v0

    .line 600
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0

    throw v0

    .line 609
    :catch_1
    move-exception v0

    .line 613
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    goto/16 :goto_0

    .line 614
    :catch_2
    move-exception v0

    .line 617
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    goto/16 :goto_0

    .line 618
    :catch_3
    move-exception v0

    .line 619
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    .line 620
    const-string v1, "REQUEST"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 621
    :catch_4
    move-exception v0

    .line 622
    invoke-static {}, Lcom/google/googlenav/common/g;->a()V

    .line 623
    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-boolean v1, p0, Lcom/google/googlenav/datarequest/j;->b:Z

    iget-boolean v2, p0, Lcom/google/googlenav/datarequest/j;->c:Z

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ZZ)V

    .line 631
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/h;->b(Lcom/google/googlenav/datarequest/h;)V

    .line 633
    return-void

    :catch_5
    move-exception v0

    goto/16 :goto_1
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-boolean v1, p0, Lcom/google/googlenav/datarequest/j;->b:Z

    iget-boolean v2, p0, Lcom/google/googlenav/datarequest/j;->c:Z

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ZZ)V

    .line 579
    iget-object v0, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/j;->d:Lcom/google/googlenav/datarequest/i;

    iget-object v1, v1, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;J)J

    .line 580
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 581
    return-void
.end method
