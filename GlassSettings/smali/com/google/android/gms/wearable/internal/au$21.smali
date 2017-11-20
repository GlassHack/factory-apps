.class Lcom/google/android/gms/wearable/internal/au$21;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/au;->f(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WM:Lcom/google/android/gms/wearable/internal/au;

.field final synthetic WN:Lcom/google/android/gms/common/api/BaseImplementation$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$21;->WM:Lcom/google/android/gms/wearable/internal/au;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$21;->WN:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/r;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$21;->WN:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v1, Lcom/google/android/gms/wearable/internal/e$a;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget v3, p1, Lcom/google/android/gms/wearable/internal/r;->statusCode:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/r;->Wq:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/e$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    return-void
.end method
