.class final Lcom/google/android/location/h/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/util/LinkedList;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/h/v;->c:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/location/h/v;->a:I

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/h/v;->b:Ljava/util/LinkedList;

    .line 60
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/location/h/v;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/android/location/h/v;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 91
    iget v1, p0, Lcom/google/android/location/h/v;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/location/h/v;->c:I

    .line 92
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/location/h/v;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/google/android/location/h/v;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 76
    if-nez v0, :cond_0

    .line 77
    iget v0, p0, Lcom/google/android/location/h/v;->c:I

    iget v1, p0, Lcom/google/android/location/h/v;->a:I

    if-ge v0, v1, :cond_1

    .line 78
    iget v0, p0, Lcom/google/android/location/h/v;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/h/v;->c:I

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/h/v;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/location/h/v;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
