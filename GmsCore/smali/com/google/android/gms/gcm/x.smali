.class final Lcom/google/android/gms/gcm/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/GcmDiagnostics;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/GcmDiagnostics;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/gms/gcm/x;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/gms/gcm/x;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a(Lcom/google/android/gms/gcm/GcmDiagnostics;)Lcom/google/android/gms/gcm/GcmService;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/b;->b(I)V

    .line 210
    return-void
.end method
