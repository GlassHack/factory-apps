.class final Lcom/google/android/gms/gcm/i;
.super Lcom/google/android/gms/gcm/bb;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lcom/google/android/gms/gcm/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/g;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/google/android/gms/gcm/i;->d:Lcom/google/android/gms/gcm/g;

    iput-object p2, p0, Lcom/google/android/gms/gcm/i;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/gcm/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/google/android/gms/gcm/i;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/google/android/gms/gcm/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLcom/google/b/a/a/e;)V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/gms/gcm/i;->d:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/google/android/gms/gcm/i;->a:Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/i;->d:Lcom/google/android/gms/gcm/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Landroid/os/Messenger;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/google/android/gms/gcm/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/i;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0
.end method
