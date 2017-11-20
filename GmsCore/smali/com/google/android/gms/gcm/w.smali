.class final Lcom/google/android/gms/gcm/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/GcmDiagnostics;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/GcmDiagnostics;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/gms/gcm/w;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/gcm/w;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a(Lcom/google/android/gms/gcm/GcmDiagnostics;)Lcom/google/android/gms/gcm/GcmService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/gcm/w;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a(Lcom/google/android/gms/gcm/GcmDiagnostics;)Lcom/google/android/gms/gcm/GcmService;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/au;->a(Z)V

    .line 103
    :cond_0
    return-void
.end method
