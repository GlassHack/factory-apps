.class public Lcom/google/android/gms/auth/trustagent/x;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/gms/auth/trustagent/ae;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/nfc/NfcAdapter;

.field private e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/android/gms/auth/trustagent/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/trustagent/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->e:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->c:Landroid/widget/TextView;

    const v1, 0x7f1001ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/x;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/aa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/aa;-><init>(Lcom/google/android/gms/auth/trustagent/x;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/x;Landroid/nfc/Tag;)V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/trustagent/z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/z;-><init>(Lcom/google/android/gms/auth/trustagent/x;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a(Landroid/nfc/Tag;Lcom/google/android/gms/auth/trustagent/trustlet/an;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/auth/trustagent/x;->a:Ljava/lang/String;

    const-string v2, "unable to communicate with tag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/x;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/x;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/x;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/x;)Lcom/google/android/gms/auth/trustagent/ae;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->b:Lcom/google/android/gms/auth/trustagent/ae;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->c:Landroid/widget/TextView;

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/auth/trustagent/x;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/x;->a()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/auth/trustagent/x;)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/x;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f10013d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/auth/trustagent/x;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/x;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/auth/trustagent/x;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/x;->b()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->d:Landroid/nfc/NfcAdapter;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/ae;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->b:Lcom/google/android/gms/auth/trustagent/ae;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->d:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->b:Lcom/google/android/gms/auth/trustagent/ae;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1001ac

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->b:Lcom/google/android/gms/auth/trustagent/ae;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/trustagent/ae;->b(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)V

    .line 56
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 99
    const v0, 0x7f03002e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->d:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/x;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->d:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/x;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100191

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/ab;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/ab;-><init>(Lcom/google/android/gms/auth/trustagent/x;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f10018e

    new-instance v2, Lcom/google/android/gms/auth/trustagent/ac;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/ac;-><init>(Lcom/google/android/gms/auth/trustagent/x;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1001b3

    new-instance v2, Lcom/google/android/gms/auth/trustagent/ad;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/ad;-><init>(Lcom/google/android/gms/auth/trustagent/x;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 89
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->c:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/x;->d:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/x;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/trustagent/y;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/y;-><init>(Lcom/google/android/gms/auth/trustagent/x;)V

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/x;->b()V

    goto :goto_0
.end method
