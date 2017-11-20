.class final Lcom/google/android/location/az;
.super Lcom/google/android/location/collectionlib/cs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/ay;

.field private b:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/google/android/location/ay;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    invoke-direct {p0}, Lcom/google/android/location/collectionlib/cs;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/ay;B)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/google/android/location/az;-><init>(Lcom/google/android/location/ay;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-boolean v0, v0, Lcom/google/android/location/ay;->f:Z

    if-nez v0, :cond_1

    .line 671
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v1, "Skipping onAllScanComplete because NLP is disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-boolean v0, v0, Lcom/google/android/location/ay;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->r:Lcom/google/g/a/b/b/a;

    if-eqz v0, :cond_2

    .line 676
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 677
    iget-object v1, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v1, v1, Lcom/google/android/location/ay;->r:Lcom/google/g/a/b/b/a;

    invoke-virtual {v1}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->a([B)V

    .line 678
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->a(I)V

    .line 679
    iget-object v1, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v1, v1, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v1, v0}, Lcom/google/android/location/collectionlib/az;->a(Lcom/google/g/a/b/b/a;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->c()V

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v1, "Unable to attach customized data."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 689
    invoke-super {p0, p1, p2}, Lcom/google/android/location/collectionlib/cs;->a(ILjava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/google/android/location/az;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 691
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/az;->b:Ljava/io/File;

    .line 693
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-boolean v0, v0, Lcom/google/android/location/ay;->f:Z

    if-nez v0, :cond_1

    .line 655
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v1, "Skipping onFileSavingFailed because NLP is disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-wide v0, v0, Lcom/google/android/location/ay;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/location/p/h;->b(Z)V

    .line 662
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->b()V

    .line 665
    :cond_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/location/collectionlib/cj;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 697
    iget-object v2, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-boolean v2, v2, Lcom/google/android/location/ay;->f:Z

    if-nez v2, :cond_2

    .line 698
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v2, v2, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping onLastSegmentSaved because NLP is disabled. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/az;->b:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/az;->b:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 700
    iget-object v2, p0, Lcom/google/android/location/az;->b:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/location/p/h;->a(Ljava/io/File;)Z

    .line 701
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v2, v2, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v3, "%s removed because NLP is disabled."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/location/az;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_1
    :goto_0
    return-void

    .line 706
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v2, v2, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-wide v2, v2, Lcom/google/android/location/ay;->o:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Lcom/google/android/location/p/h;->b(Z)V

    .line 708
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v2, "Sensor collection completed successfully or unsuccessfully."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    .line 715
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/location/collectionlib/cj;->a()I

    move-result v0

    if-nez v0, :cond_5

    .line 716
    const/4 v8, 0x3

    .line 722
    :goto_1
    iget-object v1, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-wide v2, v0, Lcom/google/android/location/ay;->o:J

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-wide v4, v0, Lcom/google/android/location/ay;->o:J

    invoke-static/range {v1 .. v8}, Lcom/google/android/location/ay;->a(Lcom/google/android/location/ay;JJJI)V

    goto :goto_0

    .line 717
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-boolean v0, v0, Lcom/google/android/location/ay;->s:Z

    if-eqz v0, :cond_6

    .line 718
    const/4 v8, 0x2

    goto :goto_1

    :cond_6
    move v8, v1

    .line 720
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    .line 638
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-boolean v0, v0, Lcom/google/android/location/ay;->f:Z

    if-nez v0, :cond_1

    .line 639
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v1, "Skipping onFatalError because NLP is disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-wide v0, v0, Lcom/google/android/location/ay;->o:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/location/p/h;->b(Z)V

    .line 646
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to collect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-wide v2, v0, Lcom/google/android/location/ay;->o:J

    iget-object v0, p0, Lcom/google/android/location/az;->a:Lcom/google/android/location/ay;

    iget-object v0, v0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    const/16 v8, 0x1d

    invoke-static/range {v1 .. v8}, Lcom/google/android/location/ay;->a(Lcom/google/android/location/ay;JJJI)V

    goto :goto_0

    .line 644
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
