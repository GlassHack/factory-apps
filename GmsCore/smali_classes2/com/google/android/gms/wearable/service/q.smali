.class final Lcom/google/android/gms/wearable/service/q;
.super Lcom/google/android/gms/wearable/service/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/c/i;

.field final synthetic b:Lcom/google/android/gms/wearable/service/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/p;Ljava/lang/String;Lcom/google/android/gms/wearable/c/i;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/q;->b:Lcom/google/android/gms/wearable/service/p;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/q;->a:Lcom/google/android/gms/wearable/c/i;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/service/x;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/q;->a:Lcom/google/android/gms/wearable/c/i;

    iget-object v0, v0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/af;)V
    .locals 3

    .prologue
    .line 465
    new-instance v0, Lcom/google/android/gms/wearable/internal/NodeParcelable;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/q;->a:Lcom/google/android/gms/wearable/c/i;

    iget-object v1, v1, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/q;->a:Lcom/google/android/gms/wearable/c/i;

    iget-object v2, v2, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/NodeParcelable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/af;->a(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V

    .line 466
    return-void
.end method
