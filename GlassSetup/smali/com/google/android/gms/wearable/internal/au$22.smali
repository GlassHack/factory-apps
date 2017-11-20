.class Lcom/google/android/gms/wearable/internal/au$22;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/au;->b(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
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

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$22;->WM:Lcom/google/android/gms/wearable/internal/au;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$22;->WN:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$22;->WN:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    return-void
.end method
