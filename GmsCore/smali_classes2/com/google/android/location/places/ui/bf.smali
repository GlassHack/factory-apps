.class final Lcom/google/android/location/places/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/be;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/be;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/location/places/ui/bf;->a:Lcom/google/android/location/places/ui/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/places/ui/bf;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v0}, Lcom/google/android/location/places/ui/be;->a(Lcom/google/android/location/places/ui/be;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/location/places/ui/bf;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v0}, Lcom/google/android/location/places/ui/be;->a(Lcom/google/android/location/places/ui/be;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 109
    return-void
.end method
