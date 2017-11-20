.class public final Lcom/google/android/gsf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gsf.login"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gsf.action.GET_GLS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/b;->a:Landroid/content/Intent;

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    packed-switch p0, :pswitch_data_0

    .line 230
    const-string v0, "Unknown error"

    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    const-string v0, "The Google login service cannot be found."

    goto :goto_0

    .line 227
    :pswitch_1
    const-string v0, "The Google login service cannot be verified."

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
