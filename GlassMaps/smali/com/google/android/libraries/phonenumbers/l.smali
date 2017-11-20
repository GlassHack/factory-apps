.class final Lcom/google/android/libraries/phonenumbers/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedHashMap;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/android/libraries/phonenumbers/l;->b:I

    .line 57
    new-instance v0, Lcom/google/android/libraries/phonenumbers/RegexCache$LRUCache$1;

    mul-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/libraries/phonenumbers/RegexCache$LRUCache$1;-><init>(Lcom/google/android/libraries/phonenumbers/l;IFZ)V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/l;->a:Ljava/util/LinkedHashMap;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/phonenumbers/l;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/libraries/phonenumbers/l;->b:I

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/l;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/l;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
