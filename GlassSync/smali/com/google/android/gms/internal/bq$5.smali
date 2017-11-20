.class Lcom/google/android/gms/internal/bq$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bq;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BO:Lcom/google/android/gms/internal/bq;

.field final synthetic BV:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bq;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bq$5;->BO:Lcom/google/android/gms/internal/bq;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq$5;->BV:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDroidGuardResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "results"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq$5;->BV:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
