.class Lcom/google/android/gms/internal/ru$5;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ru;->updateCircle(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFK:Ljava/lang/String;

.field final synthetic aFX:Lcom/google/android/gms/internal/ru;

.field final synthetic aGd:Ljava/lang/String;

.field final synthetic aGe:Ljava/lang/String;

.field final synthetic aGf:Ljava/lang/Boolean;

.field final synthetic aGg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ru;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ru$5;->aFX:Lcom/google/android/gms/internal/ru;

    iput-object p3, p0, Lcom/google/android/gms/internal/ru$5;->aFE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ru$5;->aFK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ru$5;->aGd:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ru$5;->aGe:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ru$5;->aGf:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/google/android/gms/internal/ru$5;->aGg:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/people/People$b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/rb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ru$5;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$5;->aFE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ru$5;->aFK:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ru$5;->aGd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ru$5;->aGe:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ru$5;->aGf:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/google/android/gms/internal/ru$5;->aGg:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method
