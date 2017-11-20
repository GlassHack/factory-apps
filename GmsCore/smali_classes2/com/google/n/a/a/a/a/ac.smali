.class public final Lcom/google/n/a/a/a/a/ac;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1970
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1971
    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/ac;->G:I

    .line 1972
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 2081
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 2082
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2084
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2085
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2088
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2089
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2092
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2093
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2096
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 2097
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2100
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2101
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2104
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1935
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 2060
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2061
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2062
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2065
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2067
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2068
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2070
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2071
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 2073
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2074
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2076
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 2077
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1987
    if-ne p1, p0, :cond_1

    .line 2036
    :cond_0
    :goto_0
    return v0

    .line 1990
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/ac;

    if-nez v2, :cond_2

    move v0, v1

    .line 1991
    goto :goto_0

    .line 1993
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/ac;

    .line 1994
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1995
    iget-object v2, p1, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1996
    goto :goto_0

    .line 1998
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1999
    goto :goto_0

    .line 2001
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 2002
    iget-object v2, p1, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 2003
    goto :goto_0

    .line 2005
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 2006
    goto :goto_0

    .line 2008
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 2009
    iget-object v2, p1, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 2010
    goto :goto_0

    .line 2012
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 2013
    goto :goto_0

    .line 2015
    :cond_8
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 2016
    iget-object v2, p1, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    .line 2017
    goto :goto_0

    .line 2019
    :cond_9
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 2020
    goto :goto_0

    .line 2022
    :cond_a
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    .line 2023
    iget-object v2, p1, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    move v0, v1

    .line 2024
    goto :goto_0

    .line 2026
    :cond_b
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 2027
    goto :goto_0

    .line 2029
    :cond_c
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 2030
    iget-object v2, p1, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 2031
    goto :goto_0

    .line 2033
    :cond_d
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2034
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2041
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 2044
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 2046
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 2048
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 2050
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 2052
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 2054
    return v0

    .line 2041
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 2044
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 2046
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 2048
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 2050
    :cond_4
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_4

    .line 2052
    :cond_5
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method
