.class final Lcom/google/android/gms/gcm/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/GcmService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/GcmService;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/android/gms/gcm/ad;->a:Lcom/google/android/gms/gcm/GcmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/gms/gcm/ad;->a:Lcom/google/android/gms/gcm/GcmService;

    iget-object v0, v0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/b;->b(I)V

    .line 380
    return-void
.end method
