.class final Lcom/google/android/maps/driveabout/store/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[I

.field final b:[I

.field final c:[I

.field final d:[I

.field final e:[I

.field f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field g:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1922
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    .line 1923
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    .line 1925
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    .line 1926
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    .line 1927
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    .line 1929
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    .line 1930
    return-void
.end method

.method private a([BII)V
    .locals 3

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    aget v0, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    add-int/lit8 v0, p2, 0x4

    .line 1948
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 1951
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    .line 1952
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    .line 1955
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 1958
    add-int/lit8 v1, v0, -0x10

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    .line 1960
    return-void
.end method

.method private d(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2019
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ai;->g()V

    .line 2020
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    aput v1, v0, p1

    .line 2021
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    aput v1, v0, p1

    .line 2022
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    aput v1, v0, p1

    .line 2023
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    aput v1, v0, p1

    .line 2024
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    aput v1, v0, p1

    .line 2025
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 2132
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2133
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State write lock needed to modify ShardsStats"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2136
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2028
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ai;->g()V

    .line 2029
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2030
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2032
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2033
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2035
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2037
    iput v1, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    .line 2038
    return-void
.end method

.method final a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2058
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ai;->g()V

    .line 2059
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    aput v1, v0, p1

    .line 2060
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    aput v1, v0, p1

    .line 2061
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    aput v1, v0, p1

    .line 2062
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 2063
    return-void
.end method

.method final a(II)V
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    aput p2, v0, p1

    .line 2047
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/ag;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2000
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ai;->g()V

    .line 2001
    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v1

    .line 2002
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    aput v0, v2, v1

    .line 2003
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ag;->c()I

    move-result v3

    aput v3, v2, v1

    .line 2004
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->b(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v3

    aput v3, v2, v1

    .line 2005
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    aput v0, v2, v1

    .line 2006
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    aput v0, v2, v1

    .line 2007
    :goto_0
    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->b(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2008
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/store/ag;->b(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2009
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 2010
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    aget v3, v2, v1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/store/ag;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 2007
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2013
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    aget v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-lt v1, v0, :cond_2

    .line 2014
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    .line 2016
    :cond_2
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/ay;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1937
    const/16 v1, 0x2000

    new-array v2, v1, [B

    move v1, v0

    .line 1939
    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1940
    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/maps/driveabout/store/ai;->a([BII)V

    .line 1941
    add-int/lit8 v1, v1, 0x14

    .line 1939
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1943
    :cond_0
    invoke-interface {p1, v2}, Lcom/google/android/maps/driveabout/store/ay;->b([B)V

    .line 1944
    return-void
.end method

.method final a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 0

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/ai;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1934
    return-void
.end method

.method final b()I
    .locals 2

    .prologue
    .line 2077
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ai;->g()V

    .line 2078
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    .line 2079
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/ai;->d(I)V

    .line 2080
    return v0
.end method

.method final b(Lcom/google/android/maps/driveabout/store/ay;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1963
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ai;->g()V

    .line 1964
    const/16 v1, 0x2000

    new-array v2, v1, [B

    .line 1965
    invoke-interface {p1, v2}, Lcom/google/android/maps/driveabout/store/ay;->a([B)V

    .line 1967
    iput v0, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    move v1, v0

    .line 1969
    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1970
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    .line 1971
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    .line 1973
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/store/y;->b([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x2

    .line 1974
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/store/y;->b([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x2

    .line 1976
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    .line 1979
    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v3

    .line 1980
    add-int/lit8 v4, v1, -0x10

    const/16 v5, 0x10

    invoke-static {v2, v4, v5}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v4

    .line 1982
    if-eq v3, v4, :cond_1

    .line 1983
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/ai;->a(I)V

    .line 1990
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x4

    .line 1969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1986
    :cond_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    aget v3, v3, v0

    if-lez v3, :cond_0

    .line 1987
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    goto :goto_1

    .line 1992
    :cond_2
    return-void
.end method

.method final b(I)Z
    .locals 2

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()I
    .locals 7

    .prologue
    const v1, 0x7fffffff

    const/4 v2, -0x1

    .line 2084
    .line 2091
    const/4 v0, 0x0

    move v3, v1

    move v4, v2

    move v5, v1

    move v1, v2

    :goto_0
    iget v6, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v0, v6, :cond_2

    .line 2092
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2093
    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    aget v6, v6, v0

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    aget v6, v6, v0

    if-ge v6, v5, :cond_1

    .line 2095
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    aget v5, v4, v0

    move v4, v0

    .line 2091
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2096
    :cond_1
    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    aget v6, v6, v0

    if-ge v6, v3, :cond_0

    .line 2100
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ai;->e:[I

    aget v3, v1, v0

    move v1, v0

    goto :goto_1

    .line 2104
    :cond_2
    if-eq v4, v2, :cond_3

    :goto_2
    return v4

    :cond_3
    move v4, v1

    goto :goto_2
.end method

.method final c(I)Z
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2108
    move v1, v0

    .line 2109
    :goto_0
    iget v2, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v0, v2, :cond_0

    .line 2110
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ai;->d:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 2109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2112
    :cond_0
    return v1
.end method

.method final e()J
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 2116
    .line 2117
    const/4 v0, 0x0

    move-wide v1, v3

    :goto_0
    iget v5, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v0, v5, :cond_1

    .line 2118
    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    aget v5, v5, v0

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    aget v5, v5, v0

    int-to-long v5, v5

    :goto_1
    add-long/2addr v1, v5

    .line 2117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 2118
    goto :goto_1

    .line 2120
    :cond_1
    return-wide v1
.end method

.method final f()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2124
    move v0, v1

    move v2, v1

    .line 2125
    :goto_0
    iget v3, p0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v0, v3, :cond_1

    .line 2126
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    .line 2125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2126
    goto :goto_1

    .line 2128
    :cond_1
    return v2
.end method
