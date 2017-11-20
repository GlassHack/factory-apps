.class final Lcom/google/android/gms/common/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/util/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/y;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/gms/common/util/z;->a:Lcom/google/android/gms/common/util/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/common/util/z;->a:Lcom/google/android/gms/common/util/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/y;->cancel(Z)Z

    .line 90
    return-void
.end method
