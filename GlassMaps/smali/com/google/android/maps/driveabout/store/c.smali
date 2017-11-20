.class public final Lcom/google/android/maps/driveabout/store/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bt;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/c;->a:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/c;->b:Ljava/util/concurrent/CountDownLatch;

    .line 24
    iput v1, p0, Lcom/google/android/maps/driveabout/store/c;->c:I

    .line 25
    iput v1, p0, Lcom/google/android/maps/driveabout/store/c;->d:I

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/c;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(J)Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/c;->b:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 62
    return-void
.end method

.method public final handleTile(Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V
    .locals 1

    .prologue
    .line 30
    if-nez p2, :cond_1

    .line 31
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 38
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 33
    iget v0, p0, Lcom/google/android/maps/driveabout/store/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/c;->c:I

    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 35
    iget v0, p0, Lcom/google/android/maps/driveabout/store/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/c;->d:I

    goto :goto_0
.end method
