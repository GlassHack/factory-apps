.class final Lcom/google/android/gms/fitness/n/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/n/g;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/az;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/n/az;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/bc;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/n/az;B)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/bc;-><init>(Lcom/google/android/gms/fitness/n/az;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(J)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 895
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/bc;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/az;->g()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/n/bc;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/fitness/n/az;->a(Lcom/google/android/gms/fitness/n/az;J)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Found no data source for ID %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0
.end method
