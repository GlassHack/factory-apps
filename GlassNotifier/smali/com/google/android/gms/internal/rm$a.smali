.class Lcom/google/android/gms/internal/rm$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic aFk:Lcom/google/android/gms/internal/rm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/rm;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/rm$a;->aFk:Lcom/google/android/gms/internal/rm;

    const-string v0, "PeopleAggregator-aggregator"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rm$a;->aFk:Lcom/google/android/gms/internal/rm;

    invoke-static {v0}, Lcom/google/android/gms/internal/rm;->a(Lcom/google/android/gms/internal/rm;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PeopleAggregator"

    const-string v2, "Unknown exception during aggregation"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/rc;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rm$a;->aFk:Lcom/google/android/gms/internal/rm;

    invoke-static {v0}, Lcom/google/android/gms/internal/rm;->b(Lcom/google/android/gms/internal/rm;)V

    goto :goto_0
.end method
