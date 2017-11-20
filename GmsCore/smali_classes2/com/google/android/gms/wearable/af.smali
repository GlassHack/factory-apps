.class final Lcom/google/android/gms/wearable/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/MessageEventParcelable;

.field final synthetic b:Lcom/google/android/gms/wearable/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/ad;Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/gms/wearable/af;->b:Lcom/google/android/gms/wearable/ad;

    iput-object p2, p0, Lcom/google/android/gms/wearable/af;->a:Lcom/google/android/gms/wearable/internal/MessageEventParcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/gms/wearable/af;->b:Lcom/google/android/gms/wearable/ad;

    iget-object v0, v0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    iget-object v1, p0, Lcom/google/android/gms/wearable/af;->a:Lcom/google/android/gms/wearable/internal/MessageEventParcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/ac;->a(Lcom/google/android/gms/wearable/r;)V

    .line 181
    return-void
.end method
