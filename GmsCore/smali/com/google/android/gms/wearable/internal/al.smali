.class public final Lcom/google/android/gms/wearable/internal/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/wearable/internal/am;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/am;-><init>(Lcom/google/android/gms/wearable/internal/al;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method
