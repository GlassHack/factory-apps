.class public Lcom/google/android/gms/fitness/request/u$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private Ct:Lcom/google/android/gms/fitness/data/Session;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/request/u$a;)Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/u$a;->Ct:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/u$a;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->getEndTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot start a session which has already ended"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/u$a;->Ct:Lcom/google/android/gms/fitness/data/Session;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public el()Lcom/google/android/gms/fitness/request/u;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/request/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/u;-><init>(Lcom/google/android/gms/fitness/request/u$a;Lcom/google/android/gms/fitness/request/u$1;)V

    return-object v0
.end method
