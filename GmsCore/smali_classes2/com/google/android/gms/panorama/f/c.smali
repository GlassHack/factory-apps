.class final Lcom/google/android/gms/panorama/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/panorama/f/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/f/a;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/gms/panorama/f/c;->a:Lcom/google/android/gms/panorama/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/panorama/f/c;->a:Lcom/google/android/gms/panorama/f/a;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/panorama/f/c;->a:Lcom/google/android/gms/panorama/f/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/panorama/f/a;->a(Ljava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method
