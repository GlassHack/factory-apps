.class public final Lcom/google/n/a/b/a/a/e;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/google/n/a/b/a/a/c;

.field public c:Lcom/google/n/a/b/a/a/f;

.field public d:Lcom/google/n/a/b/a/a/h;

.field public e:Lcom/google/n/a/b/a/a/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1974
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 1975
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/n/a/b/a/a/e;->a:I

    iput-object v1, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    iput-object v1, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    iput-object v1, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    iput-object v1, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    iput-object v1, p0, Lcom/google/n/a/b/a/a/e;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/b/a/a/e;->G:I

    .line 1976
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 2079
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 2080
    iget v1, p0, Lcom/google/n/a/b/a/a/e;->a:I

    if-eqz v1, :cond_0

    .line 2081
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/n/a/b/a/a/e;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2084
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    if-eqz v1, :cond_1

    .line 2085
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2088
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    if-eqz v1, :cond_2

    .line 2089
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2092
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    if-eqz v1, :cond_3

    .line 2093
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2096
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    if-eqz v1, :cond_4

    .line 2097
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2100
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1932
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/e;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/n/a/b/a/a/e;->a:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/n/a/b/a/a/c;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/n/a/b/a/a/f;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/n/a/b/a/a/h;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/n/a/b/a/a/m;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    :cond_4
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 2059
    iget v0, p0, Lcom/google/n/a/b/a/a/e;->a:I

    if-eqz v0, :cond_0

    .line 2060
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/n/a/b/a/a/e;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 2062
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    if-eqz v0, :cond_1

    .line 2063
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 2065
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    if-eqz v0, :cond_2

    .line 2066
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 2068
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    if-eqz v0, :cond_3

    .line 2069
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 2071
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    if-eqz v0, :cond_4

    .line 2072
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 2074
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 2075
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1991
    if-ne p1, p0, :cond_1

    .line 1992
    const/4 v0, 0x1

    .line 2037
    :cond_0
    :goto_0
    return v0

    .line 1994
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/e;

    if-eqz v1, :cond_0

    .line 1997
    check-cast p1, Lcom/google/n/a/b/a/a/e;

    .line 1998
    iget v1, p0, Lcom/google/n/a/b/a/a/e;->a:I

    iget v2, p1, Lcom/google/n/a/b/a/a/e;->a:I

    if-ne v1, v2, :cond_0

    .line 2001
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    if-nez v1, :cond_6

    .line 2002
    iget-object v1, p1, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    if-nez v1, :cond_0

    .line 2010
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    if-nez v1, :cond_7

    .line 2011
    iget-object v1, p1, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    if-nez v1, :cond_0

    .line 2019
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    if-nez v1, :cond_8

    .line 2020
    iget-object v1, p1, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    if-nez v1, :cond_0

    .line 2028
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    if-nez v1, :cond_9

    .line 2029
    iget-object v1, p1, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    if-nez v1, :cond_0

    .line 2037
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/e;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 2006
    :cond_6
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    invoke-virtual {v1, v2}, Lcom/google/n/a/b/a/a/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 2015
    :cond_7
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    invoke-virtual {v1, v2}, Lcom/google/n/a/b/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 2024
    :cond_8
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    invoke-virtual {v1, v2}, Lcom/google/n/a/b/a/a/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 2033
    :cond_9
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    invoke-virtual {v1, v2}, Lcom/google/n/a/b/a/a/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2042
    iget v0, p0, Lcom/google/n/a/b/a/a/e;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 2044
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 2046
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 2048
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 2050
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 2052
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/e;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 2053
    return v0

    .line 2044
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    invoke-virtual {v0}, Lcom/google/n/a/b/a/a/c;->hashCode()I

    move-result v0

    goto :goto_0

    .line 2046
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->c:Lcom/google/n/a/b/a/a/f;

    invoke-virtual {v0}, Lcom/google/n/a/b/a/a/f;->hashCode()I

    move-result v0

    goto :goto_1

    .line 2048
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/e;->d:Lcom/google/n/a/b/a/a/h;

    invoke-virtual {v0}, Lcom/google/n/a/b/a/a/h;->hashCode()I

    move-result v0

    goto :goto_2

    .line 2050
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/e;->e:Lcom/google/n/a/b/a/a/m;

    invoke-virtual {v1}, Lcom/google/n/a/b/a/a/m;->hashCode()I

    move-result v1

    goto :goto_3
.end method
