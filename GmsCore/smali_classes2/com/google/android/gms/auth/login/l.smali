.class final Lcom/google/android/gms/auth/login/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/i;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/gms/auth/login/l;->a:Lcom/google/android/gms/auth/login/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 325
    sget-boolean v1, Lcom/google/android/gms/auth/login/o;->w:Z

    if-eqz v1, :cond_0

    .line 326
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EditorAction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/google/android/gms/auth/login/l;->a:Lcom/google/android/gms/auth/login/i;

    invoke-static {v1}, Lcom/google/android/gms/auth/login/i;->b(Lcom/google/android/gms/auth/login/i;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 340
    :goto_0
    return v0

    .line 333
    :cond_1
    if-eqz p3, :cond_3

    .line 334
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 335
    const/16 v2, 0x42

    if-eq v1, v2, :cond_2

    const/16 v2, 0x14

    if-ne v1, v2, :cond_3

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/login/l;->a:Lcom/google/android/gms/auth/login/i;

    invoke-static {v1}, Lcom/google/android/gms/auth/login/i;->b(Lcom/google/android/gms/auth/login/i;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 340
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
