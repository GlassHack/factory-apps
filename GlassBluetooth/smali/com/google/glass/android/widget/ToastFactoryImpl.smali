.class final Lcom/google/glass/android/widget/ToastFactoryImpl;
.super Ljava/lang/Object;
.source "ToastFactoryImpl.java"

# interfaces
.implements Lcom/google/glass/android/widget/ToastFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeToast(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeToast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "duration"    # I

    .prologue
    .line 18
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public makeToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .prologue
    .line 23
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method
