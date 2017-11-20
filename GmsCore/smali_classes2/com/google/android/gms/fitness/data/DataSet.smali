.class public final Lcom/google/android/gms/fitness/data/DataSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/DataSource;

.field private final c:Lcom/google/android/gms/fitness/data/DataType;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/google/android/gms/fitness/data/g;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Ljava/util/List;Ljava/util/List;Z)V
    .locals 5

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->f:Z

    .line 63
    iput p1, p0, Lcom/google/android/gms/fitness/data/DataSet;->a:I

    .line 64
    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 65
    iput-object p3, p0, Lcom/google/android/gms/fitness/data/DataSet;->c:Lcom/google/android/gms/fitness/data/DataType;

    .line 66
    iput-boolean p6, p0, Lcom/google/android/gms/fitness/data/DataSet;->f:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    .line 68
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    .line 71
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/RawDataPoint;

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/fitness/data/DataPoint;

    iget-object v4, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/data/RawDataPoint;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->f:Z

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->a:I

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 79
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->c:Lcom/google/android/gms/fitness/data/DataType;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/RawDataSet;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .prologue
    .line 90
    const/4 v1, 0x3

    iget v0, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->b:I

    invoke-static {p2, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSource;

    iget v0, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->c:I

    invoke-static {p3, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v4, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->d:Ljava/util/List;

    iget-boolean v6, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->e:Z

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Ljava/util/List;Ljava/util/List;Z)V

    .line 96
    return-void
.end method

.method public static a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 2

    .prologue
    .line 123
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    .line 124
    iget-boolean v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->f:Z

    iput-boolean v1, v0, Lcom/google/android/gms/fitness/data/DataSet;->f:Z

    .line 125
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 304
    const/16 v0, 0x18

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 319
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 321
    new-instance v3, Lcom/google/android/gms/fitness/data/RawDataPoint;

    invoke-direct {v3, v0, p1}, Lcom/google/android/gms/fitness/data/RawDataPoint;-><init>(Lcom/google/android/gms/fitness/data/DataPoint;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_0
    return-object v1
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Conflicting data sources found %s vs %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSet;->c:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Conflicting data types found %s vs %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/google/android/gms/fitness/data/DataSet;->c:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Data point does not have the timestamp set: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Data point with start time greater than end time found: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/DataSet;->b(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 155
    return-void

    :cond_0
    move v0, v2

    .line 150
    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    goto :goto_1
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 188
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataSet;->b(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 201
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->d()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/google/android/gms/fitness/data/DataSet;->f:Z

    .line 263
    return-void
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->d()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public final c()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->c:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 267
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/DataSet;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->c:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataSet;->c:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->f:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/DataSet;->f:Z

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->f:Z

    return v0
.end method

.method final g()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->a:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->c:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->j()I

    move-result v0

    goto :goto_0
.end method

.method final j()Ljava/util/List;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final k()Ljava/util/List;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->e:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSet;->j()Ljava/util/List;

    move-result-object v0

    .line 285
    const-string v1, "DataSet{%s %s}"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSet;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    :goto_0
    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "%d data points, first 5: %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/fitness/data/DataSet;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x5

    invoke-interface {v0, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 338
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/g;->a(Lcom/google/android/gms/fitness/data/DataSet;Landroid/os/Parcel;I)V

    .line 339
    return-void
.end method
