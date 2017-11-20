.class final Lcom/google/android/gms/wearable/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/NodeParcelable;

.field final synthetic b:Lcom/google/android/gms/wearable/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/ad;Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/gms/wearable/ag;->b:Lcom/google/android/gms/wearable/ad;

    iput-object p2, p0, Lcom/google/android/gms/wearable/ag;->a:Lcom/google/android/gms/wearable/internal/NodeParcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/gms/wearable/ag;->b:Lcom/google/android/gms/wearable/ad;

    iget-object v0, v0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    iget-object v1, p0, Lcom/google/android/gms/wearable/ag;->a:Lcom/google/android/gms/wearable/internal/NodeParcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/ac;->a(Lcom/google/android/gms/wearable/s;)V

    .line 200
    return-void
.end method
