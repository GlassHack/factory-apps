.class final Lcom/google/android/gms/d/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/d/c;


# instance fields
.field final synthetic a:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic b:Lcom/google/android/gms/d/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/a/b;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/gms/d/a/h;->b:Lcom/google/android/gms/d/a/b;

    iput-object p2, p0, Lcom/google/android/gms/d/a/h;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/a/h;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
