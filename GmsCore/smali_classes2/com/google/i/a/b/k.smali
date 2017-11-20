.class public final Lcom/google/i/a/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/g;


# static fields
.field private static final b:Lcom/google/i/a/b/k;


# instance fields
.field public a:Lcom/google/i/a/b/s;

.field private c:Lcom/google/i/a/b/j;

.field private d:J

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/i/a/b/k;

    invoke-direct {v0}, Lcom/google/i/a/b/k;-><init>()V

    sput-object v0, Lcom/google/i/a/b/k;->b:Lcom/google/i/a/b/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)I
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/i/a/b/k;->c:Lcom/google/i/a/b/j;

    invoke-interface {v0, p3}, Lcom/google/i/a/b/j;->a(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/i/a/b/q;->a(I)Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/o;

    iget-object v0, v0, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    .line 150
    invoke-virtual {p1, p3, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/i/a/b/j;)Lcom/google/i/a/b/k;
    .locals 8

    .prologue
    .line 47
    sget-object v0, Lcom/google/i/a/b/k;->b:Lcom/google/i/a/b/k;

    iput-object p0, v0, Lcom/google/i/a/b/k;->c:Lcom/google/i/a/b/j;

    .line 48
    sget-object v7, Lcom/google/i/a/b/k;->b:Lcom/google/i/a/b/k;

    new-instance v0, Lcom/google/i/a/b/s;

    const/4 v1, 0x5

    invoke-interface {p0, v1}, Lcom/google/i/a/b/j;->b(I)I

    move-result v2

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lcom/google/i/a/b/j;->b(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Lcom/google/i/a/b/j;->b(I)I

    move-result v4

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Lcom/google/i/a/b/j;->b(I)I

    move-result v5

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Lcom/google/i/a/b/j;->b(I)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/i/a/b/s;-><init>(Lcom/google/i/a/b/r;IIIII)V

    iput-object v0, v7, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    .line 55
    sget-object v0, Lcom/google/i/a/b/k;->b:Lcom/google/i/a/b/k;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/i/a/b/k;->d:J

    .line 56
    sget-object v0, Lcom/google/i/a/b/k;->b:Lcom/google/i/a/b/k;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/i/a/b/k;->e:Z

    .line 58
    sget-object v0, Lcom/google/i/a/b/k;->b:Lcom/google/i/a/b/k;

    return-object v0
.end method

.method private static final b(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0, p2}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    .line 158
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 159
    invoke-virtual {p0, p2, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    iget-object v3, p1, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v3, v3, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    new-instance v4, Lcom/google/i/a/b/o;

    invoke-direct {v4, v2}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    invoke-virtual {v3, v4}, Lcom/google/android/location/b/an;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    .line 67
    iget-object v0, p0, Lcom/google/i/a/b/k;->c:Lcom/google/i/a/b/j;

    invoke-interface {v0}, Lcom/google/i/a/b/j;->g()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/i/a/b/k;->d:J

    sub-long/2addr v2, v4

    .line 68
    iget-boolean v0, p0, Lcom/google/i/a/b/k;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/i/a/b/k;->c:Lcom/google/i/a/b/j;

    invoke-interface {v0}, Lcom/google/i/a/b/j;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v2, v0, Lcom/google/i/a/b/s;->a:Lcom/google/i/a/b/q;

    iget-object v2, v2, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v2, v2, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v2}, Lcom/google/android/location/b/an;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/i/a/b/s;->b:Lcom/google/i/a/b/q;

    iget-object v3, v3, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v3, v3, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v3}, Lcom/google/android/location/b/an;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/google/i/a/b/s;->c:Lcom/google/i/a/b/q;

    iget-object v3, v3, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v3, v3, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v3}, Lcom/google/android/location/b/an;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/google/i/a/b/s;->d:Lcom/google/i/a/b/q;

    iget-object v3, v3, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v3, v3, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v3}, Lcom/google/android/location/b/an;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v0, v0, Lcom/google/i/a/b/s;->e:Lcom/google/i/a/b/q;

    iget-object v0, v0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->size()I

    move-result v0

    add-int/2addr v0, v2

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aD:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iget-object v2, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v2, v2, Lcom/google/i/a/b/s;->b:Lcom/google/i/a/b/q;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/i/a/b/k;->a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)I

    iget-object v2, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v2, v2, Lcom/google/i/a/b/s;->c:Lcom/google/i/a/b/q;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/i/a/b/k;->a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)I

    iget-object v2, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v2, v2, Lcom/google/i/a/b/s;->d:Lcom/google/i/a/b/q;

    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/i/a/b/k;->a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)I

    iget-object v2, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v2, v2, Lcom/google/i/a/b/s;->e:Lcom/google/i/a/b/q;

    invoke-direct {p0, v0, v2, v6}, Lcom/google/i/a/b/k;->a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)I

    .line 80
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v3, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 81
    new-instance v3, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v3, v4}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 84
    iput-boolean v1, p0, Lcom/google/i/a/b/k;->e:Z

    .line 85
    iget-object v0, p0, Lcom/google/i/a/b/k;->c:Lcom/google/i/a/b/j;

    invoke-interface {v0}, Lcom/google/i/a/b/j;->c()Lcom/google/android/location/k/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1, p0}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V

    goto/16 :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/location/k/b;Lcom/google/g/a/b/b/a;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x0

    const/4 v5, 0x2

    .line 110
    iget-object v1, p0, Lcom/google/i/a/b/k;->c:Lcom/google/i/a/b/j;

    invoke-interface {v1}, Lcom/google/i/a/b/j;->g()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/i/a/b/k;->d:J

    .line 111
    iput-boolean v0, p0, Lcom/google/i/a/b/k;->e:Z

    .line 114
    if-eqz p2, :cond_0

    sget-object v1, Lcom/google/android/location/n/a;->T:Lcom/google/g/a/b/b/c;

    invoke-virtual {p2}, Lcom/google/g/a/b/b/a;->c()Lcom/google/g/a/b/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p2, v5}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    .line 121
    :goto_0
    if-ge v0, v1, :cond_0

    .line 122
    invoke-virtual {p2, v5, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 125
    invoke-virtual {v2, v6}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    invoke-virtual {v2, v6}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/google/i/a/b/k;->c:Lcom/google/i/a/b/j;

    invoke-interface {v3, v2}, Lcom/google/i/a/b/j;->a(Lcom/google/g/a/b/b/a;)V

    .line 132
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v3, v3, Lcom/google/i/a/b/s;->a:Lcom/google/i/a/b/q;

    iget-object v3, v3, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v3, v3, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v3}, Lcom/google/android/location/b/an;->clear()V

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v3, v3, Lcom/google/i/a/b/s;->b:Lcom/google/i/a/b/q;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/i/a/b/k;->b(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)V

    .line 135
    iget-object v3, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v3, v3, Lcom/google/i/a/b/s;->c:Lcom/google/i/a/b/q;

    invoke-static {v2, v3, v5}, Lcom/google/i/a/b/k;->b(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)V

    .line 138
    iget-object v3, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v3, v3, Lcom/google/i/a/b/s;->d:Lcom/google/i/a/b/q;

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/google/i/a/b/k;->b(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)V

    .line 140
    iget-object v3, p0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v3, v3, Lcom/google/i/a/b/s;->e:Lcom/google/i/a/b/q;

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/google/i/a/b/k;->b(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;I)V

    .line 121
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
