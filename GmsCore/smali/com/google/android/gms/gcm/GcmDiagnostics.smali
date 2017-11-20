.class public Lcom/google/android/gms/gcm/GcmDiagnostics;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static a:Lcom/google/android/gms/gcm/GcmDiagnostics;

.field private static m:Landroid/os/Handler;


# instance fields
.field b:Z

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/RadioGroup;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Lcom/google/android/gms/gcm/GcmService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/gms/gcm/u;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/GcmDiagnostics;->m:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->c:I

    .line 62
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->b:Z

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/widget/RadioButton;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->h:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 187
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/GcmDiagnostics;)Lcom/google/android/gms/gcm/GcmService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    return-object v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/gms/gcm/GcmDiagnostics;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 154
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->g:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 156
    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->g:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_hostname"

    const-string v2, "mtalk.google.com"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->e:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->f:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "mtalk.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 166
    :cond_2
    const-string v1, "mtalk-staging.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private static e()V
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 294
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 295
    sget-object v1, Lcom/google/android/gms/gcm/GcmDiagnostics;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->b:Z

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    if-nez v0, :cond_1

    .line 276
    const-wide/16 v0, 0x7d0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/gcm/GcmService;->a(Landroid/content/Context;J)Lcom/google/android/gms/gcm/GcmService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->d:Landroid/widget/TextView;

    const-string v1, "No service"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :cond_2
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 283
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 284
    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/io/PrintWriter;)V

    .line 285
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->d()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    iget-object v0, v0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->i()V

    .line 302
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 202
    const-wide/16 v2, 0x7d0

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/gcm/GcmService;->a(Landroid/content/Context;J)Lcom/google/android/gms/gcm/GcmService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    if-eqz v1, :cond_4

    .line 205
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->k:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/gcm/x;

    invoke-direct {v1, p0}, Lcom/google/android/gms/gcm/x;-><init>(Lcom/google/android/gms/gcm/GcmDiagnostics;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->i:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    .line 215
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->b:Z

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->i:Landroid/widget/Button;

    const-string v2, "Events"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a()V

    .line 225
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->b:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->b:Z

    goto :goto_0

    .line 219
    :cond_3
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 220
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 221
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/io/PrintWriter;I)V

    .line 222
    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->i:Landroid/widget/Button;

    const-string v2, "Status"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->g:Landroid/widget/CheckBox;

    if-ne v2, p1, :cond_6

    .line 232
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    :cond_5
    invoke-static {p0, v0}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;I)V

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/gcm/GcmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 240
    :cond_6
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v0

    .line 241
    if-eqz v0, :cond_8

    const-string v0, "gcm_secure_port"

    .line 245
    :goto_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 249
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->e:Landroid/widget/RadioButton;

    if-ne p1, v3, :cond_9

    .line 250
    const-string v3, "gtalk_hostname"

    const-string v4, "mtalk.google.com"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v3, "5228"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_7
    :goto_3
    sget-object v0, Lcom/google/android/gms/gcm/ab;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/gcm/GcmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    invoke-static {}, Lcom/google/android/gms/gcm/GcmDiagnostics;->e()V

    goto/16 :goto_0

    .line 241
    :cond_8
    const-string v0, "gtalk_secure_port"

    goto :goto_2

    .line 252
    :cond_9
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->f:Landroid/widget/RadioButton;

    if-ne p1, v3, :cond_7

    .line 253
    const-string v3, "gtalk_hostname"

    const-string v4, "mtalk-staging.google.com"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v3, "5229"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sput-object p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gcm_dev"

    invoke-static {v0, v1, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->c:I

    .line 87
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    const-string v2, "Ping"

    new-instance v3, Lcom/google/android/gms/gcm/v;

    invoke-direct {v3, p0}, Lcom/google/android/gms/gcm/v;-><init>(Lcom/google/android/gms/gcm/GcmDiagnostics;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 97
    const-string v2, "Connect"

    new-instance v3, Lcom/google/android/gms/gcm/w;

    invoke-direct {v3, p0}, Lcom/google/android/gms/gcm/w;-><init>(Lcom/google/android/gms/gcm/GcmDiagnostics;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->j:Landroid/widget/Button;

    .line 105
    const-string v2, "Disconnect"

    invoke-direct {p0, v1, v2, p0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->k:Landroid/widget/Button;

    .line 106
    const-string v2, "Events"

    invoke-direct {p0, v1, v2, p0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->i:Landroid/widget/Button;

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    iget v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->c:I

    if-lez v1, :cond_1

    .line 111
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 112
    const-string v2, "Enabled"

    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->g:Landroid/widget/CheckBox;

    .line 114
    iget v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->c:I

    if-le v2, v5, :cond_0

    .line 115
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    const-string v3, "Target:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->h:Landroid/widget/RadioGroup;

    .line 120
    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->h:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 121
    const-string v2, "Prod"

    invoke-direct {p0, v2}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a(Ljava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->e:Landroid/widget/RadioButton;

    .line 122
    const-string v2, "Staging"

    invoke-direct {p0, v2}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a(Ljava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->f:Landroid/widget/RadioButton;

    .line 123
    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->h:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->d()V

    .line 132
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->d:Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->d:Landroid/widget/TextView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinLines(I)V

    .line 134
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->d:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    const-wide/16 v2, 0x7d0

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/gcm/GcmService;->a(Landroid/content/Context;J)Lcom/google/android/gms/gcm/GcmService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/gcm/GcmDiagnostics;->l:Lcom/google/android/gms/gcm/GcmService;

    .line 140
    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->setContentView(Landroid/view/View;)V

    .line 142
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 143
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 145
    sget-object v1, Lcom/google/android/gms/gcm/GcmDiagnostics;->m:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    invoke-static {}, Lcom/google/android/gms/gcm/GcmDiagnostics;->e()V

    .line 148
    return-void
.end method
