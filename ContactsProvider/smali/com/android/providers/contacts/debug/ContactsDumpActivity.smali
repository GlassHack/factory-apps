.class public Lcom/android/providers/contacts/debug/ContactsDumpActivity;
.super Landroid/app/Activity;
.source "ContactsDumpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/debug/ContactsDumpActivity$1;,
        Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmButton:Landroid/widget/Button;

.field private mDeleteButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "ContactsDumpActivity"

    sput-object v0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/debug/ContactsDumpActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/contacts/debug/ContactsDumpActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->emailFile(Landroid/net/Uri;)V

    return-void
.end method

.method private cleanup()V
    .locals 0

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/providers/contacts/debug/DataExporter;->removeDumpFiles(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method private emailFile(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 118
    sget-object v1, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->TAG:Ljava/lang/String;

    const-string v2, "Drafting email"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f040011

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "android.intent.extra.TEXT"

    const v2, 0x7f040012

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    const v1, 0x7f040010

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method

.method private updateDeleteButton()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-static {p0}, Lcom/android/providers/contacts/debug/DataExporter;->dumpFileExists(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-direct {p0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->updateDeleteButton()V

    .line 131
    iget-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    new-instance v0, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;-><init>(Lcom/android/providers/contacts/debug/ContactsDumpActivity;Lcom/android/providers/contacts/debug/ContactsDumpActivity$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-direct {p0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->cleanup()V

    .line 78
    invoke-direct {p0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->updateDeleteButton()V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->finish()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x7f050001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x3

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->requestWindowFeature(I)Z

    .line 53
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 58
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->mConfirmButton:Landroid/widget/Button;

    .line 59
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->mCancelButton:Landroid/widget/Button;

    .line 60
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->mDeleteButton:Landroid/widget/Button;

    .line 61
    invoke-direct {p0}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->updateDeleteButton()V

    .line 62
    return-void
.end method
