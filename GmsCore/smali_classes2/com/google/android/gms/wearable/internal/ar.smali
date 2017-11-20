.class public final Lcom/google/android/gms/wearable/internal/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/u;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ar;->a:Lcom/google/android/gms/common/api/Status;

    .line 64
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ar;->b:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ar;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ar;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
