.class Lcom/google/android/gms/wearable/internal/au$11;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/au;->k(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
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

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$11;->WM:Lcom/google/android/gms/wearable/internal/au;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$11;->WN:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/v;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/v;->Ws:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/au$11;->WN:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v2, Lcom/google/android/gms/wearable/internal/aj$a;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    iget v4, p1, Lcom/google/android/gms/wearable/internal/v;->statusCode:I

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/wearable/internal/aj$a;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    return-void
.end method
