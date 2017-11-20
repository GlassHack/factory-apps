.class public final Lcom/google/android/gms/wearable/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/e;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Lcom/google/android/gms/wearable/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/j;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/l;->a:Lcom/google/android/gms/common/api/Status;

    .line 52
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/l;->b:Lcom/google/android/gms/wearable/j;

    .line 53
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/l;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
