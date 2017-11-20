.class Lcom/google/android/gms/internal/rm$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic aFk:Lcom/google/android/gms/internal/rm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/rm;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/rm$b;->aFk:Lcom/google/android/gms/internal/rm;

    const-string v0, "PeopleAggregator-contacts"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/rm$b;->aFk:Lcom/google/android/gms/internal/rm;

    iget-object v0, v0, Lcom/google/android/gms/internal/rm;->aFb:Lcom/google/android/gms/internal/rg;

    const-string v1, "contacts query start"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/rg;->de(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rm$b;->aFk:Lcom/google/android/gms/internal/rm;

    iget-object v1, p0, Lcom/google/android/gms/internal/rm$b;->aFk:Lcom/google/android/gms/internal/rm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/rm;->rF()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/rm;->a(Landroid/database/Cursor;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PeopleAggregator"

    const-string v2, "Error while quering contacts"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/rc;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/rm$b;->aFk:Lcom/google/android/gms/internal/rm;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/rm;->a(Landroid/database/Cursor;Ljava/lang/Exception;)V

    goto :goto_0
.end method
