.class final Lcom/google/android/gms/gcm/v;
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
    .line 91
    iput-object p1, p0, Lcom/google/android/gms/gcm/v;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/gcm/v;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->b()V

    .line 95
    return-void
.end method
