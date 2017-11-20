.class final Lcom/google/h/a/b/b/ak;
.super Lcom/google/h/a/b/b/c;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/h/a/b/b/ah;

.field private c:J

.field private d:J


# direct methods
.method private constructor <init>(Lcom/google/h/a/b/b/ah;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 618
    iput-object p1, p0, Lcom/google/h/a/b/b/ak;->b:Lcom/google/h/a/b/b/ah;

    invoke-direct {p0}, Lcom/google/h/a/b/b/c;-><init>()V

    .line 623
    iput-wide v0, p0, Lcom/google/h/a/b/b/ak;->c:J

    .line 626
    iput-wide v0, p0, Lcom/google/h/a/b/b/ak;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/h/a/b/b/ah;B)V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/google/h/a/b/b/ak;-><init>(Lcom/google/h/a/b/b/ah;)V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 645
    iget-wide v4, p0, Lcom/google/h/a/b/b/ak;->c:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    iget-wide v4, p0, Lcom/google/h/a/b/b/ak;->c:J

    sget-wide v6, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v4, v6

    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    move v0, v1

    .line 648
    :goto_0
    iget-wide v4, p0, Lcom/google/h/a/b/b/ak;->d:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/google/h/a/b/b/ak;->d:J

    sget-wide v6, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v4, v6

    cmp-long v3, p1, v4

    if-gtz v3, :cond_2

    .line 650
    :goto_1
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/h/a/b/b/ak;->b:Lcom/google/h/a/b/b/ah;

    iget-object v0, p0, Lcom/google/h/a/b/b/ak;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    invoke-static {}, Lcom/google/h/a/b/b/ah;->f()[Z

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ac;[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/google/h/a/b/b/ak;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/h/a/b/b/ac;->b()Lcom/google/h/a/b/b/ae;

    move-result-object v0

    .line 657
    invoke-interface {v0}, Lcom/google/h/a/b/b/ae;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    invoke-interface {v0}, Lcom/google/h/a/b/b/ae;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 669
    :cond_0
    const/16 v0, 0x1f

    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 645
    goto :goto_0

    :cond_2
    move v1, v2

    .line 648
    goto :goto_1

    .line 660
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_2

    .line 662
    :pswitch_1
    const/16 v0, 0x14

    goto :goto_2

    .line 658
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(JIF)V
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    .line 631
    iput-wide p1, p0, Lcom/google/h/a/b/b/ak;->c:J

    .line 633
    :cond_0
    return-void
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 3

    .prologue
    .line 637
    invoke-static {}, Lcom/google/h/a/b/b/ah;->d()Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iput-wide p1, p0, Lcom/google/h/a/b/b/ak;->d:J

    .line 640
    :cond_0
    return-void
.end method
