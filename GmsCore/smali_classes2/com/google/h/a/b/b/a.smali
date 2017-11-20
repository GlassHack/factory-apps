.class public final Lcom/google/h/a/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/t;


# instance fields
.field private a:Lcom/google/h/a/b/a/b;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    return v0
.end method

.method public final a()Lcom/google/h/a/b/a/b;
    .locals 11

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget-object v0, v0, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    sget-object v1, Lcom/google/h/a/b/a/c;->c:Lcom/google/h/a/b/a/c;

    if-ne v0, v1, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    .line 73
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/h/a/b/a/b;

    iget-object v1, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget v1, v1, Lcom/google/h/a/b/a/b;->c:I

    iget-object v2, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget v2, v2, Lcom/google/h/a/b/a/b;->d:I

    iget-object v3, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget v3, v3, Lcom/google/h/a/b/a/b;->e:I

    iget-object v4, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget-object v4, v4, Lcom/google/h/a/b/a/b;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget-object v5, v5, Lcom/google/h/a/b/a/b;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget v6, v6, Lcom/google/h/a/b/a/b;->j:I

    iget-object v7, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget v7, v7, Lcom/google/h/a/b/a/b;->f:F

    iget-object v8, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget-wide v8, v8, Lcom/google/h/a/b/a/b;->g:D

    sget-object v10, Lcom/google/h/a/b/a/c;->c:Lcom/google/h/a/b/a/c;

    invoke-direct/range {v0 .. v10}, Lcom/google/h/a/b/a/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IFDLcom/google/h/a/b/a/c;)V

    goto :goto_0
.end method

.method public final a(JFFZ)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public final a(JIF)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 7

    .prologue
    .line 36
    sget-object v0, Lcom/google/h/a/b/b/b;->a:[I

    iget-object v1, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v1}, Lcom/google/h/a/b/a/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/google/h/a/b/b/a;->b:J

    .line 57
    return-void

    .line 44
    :pswitch_0
    iput-object p3, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    iget-object v0, v0, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    sget-object v1, Lcom/google/h/a/b/a/c;->c:Lcom/google/h/a/b/a/c;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    invoke-virtual {p3, v0}, Lcom/google/h/a/b/a/b;->a(Lcom/google/h/a/b/a/b;)D

    move-result-wide v0

    iget v2, p3, Lcom/google/h/a/b/a/b;->e:I

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 51
    :cond_1
    iput-object p3, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(JLcom/google/h/a/b/b/u;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/google/h/a/b/b/a;->b:J

    return-wide v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/a;->a:Lcom/google/h/a/b/a/b;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/h/a/b/b/a;->b:J

    .line 92
    return-void
.end method
