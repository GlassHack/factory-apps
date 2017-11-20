.class public final Lcom/google/android/gms/wearable/internal/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/gms/wearable/internal/aq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/aq;-><init>(Lcom/google/android/gms/wearable/internal/ap;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method
