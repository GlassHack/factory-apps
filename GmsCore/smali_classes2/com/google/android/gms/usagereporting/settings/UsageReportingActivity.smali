.class public Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;
.super Landroid/support/v7/a/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/common/api/l;
.implements Lcom/google/android/gms/common/api/m;
.implements Lcom/google/android/gms/common/ui/widget/a;
.implements Lcom/google/android/gms/usagereporting/f;


# instance fields
.field private n:Lcom/google/android/gms/common/api/j;

.field private o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

.field private p:Landroid/widget/CompoundButton;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/a/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;Z)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const v0, 0x7f100445

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f100444

    goto :goto_0
.end method

.method private b(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    const-string v0, "UsageReportingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find view: id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    .line 106
    :cond_0
    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 110
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->setEnabled(Z)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->q:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_2
    return-void

    .line 110
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private c(Z)V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->n:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const-string v0, "UsageReportingActivity"

    const-string v1, "It is not connected to the server."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 189
    :goto_1
    sget-object v1, Lcom/google/android/gms/usagereporting/a;->b:Lcom/google/android/gms/usagereporting/d;

    iget-object v2, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->n:Lcom/google/android/gms/common/api/j;

    new-instance v3, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-direct {v3, v0}, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;-><init>(I)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/usagereporting/d;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)Lcom/google/android/gms/common/api/y;

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/google/android/gms/usagereporting/a;->b:Lcom/google/android/gms/usagereporting/d;

    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->n:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0, v1}, Lcom/google/android/gms/usagereporting/d;->a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/usagereporting/settings/a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/usagereporting/settings/a;-><init>(Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/ab;)V

    .line 148
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 151
    const-string v0, "usage-reporting"

    invoke-static {p0, v0}, Lcom/google/android/gsf/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 218
    const-string v0, "UsageReportingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectionSuspended: cause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->b(Z)V

    .line 220
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->b(Z)V

    .line 212
    sget-object v0, Lcom/google/android/gms/usagereporting/a;->b:Lcom/google/android/gms/usagereporting/d;

    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->n:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/usagereporting/d;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/usagereporting/f;)Lcom/google/android/gms/common/api/y;

    .line 213
    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->e()V

    .line 214
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 3

    .prologue
    .line 224
    const-string v0, "UsageReportingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not connect to UsageReporting service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->b(Z)V

    .line 226
    return-void
.end method

.method public final a_(Z)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->c(Z)V

    .line 180
    return-void
.end method

.method public final i_()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->e()V

    .line 207
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->c(Z)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->r:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->f()V

    .line 175
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0300ea

    invoke-virtual {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->setContentView(I)V

    .line 55
    invoke-super {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/common/util/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/support/v7/a/a;->a()V

    .line 62
    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

    .line 63
    iput-object v2, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    .line 64
    iput-object v2, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->q:Landroid/widget/TextView;

    .line 65
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    const v0, 0x7f0d00d3

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ui/widget/SwitchBar;

    iput-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->o:Lcom/google/android/gms/common/ui/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->a(Lcom/google/android/gms/common/ui/widget/a;)V

    .line 79
    :cond_1
    :goto_0
    const v0, 0x1020010

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->r:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100443

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->r:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_2
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/usagereporting/a;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->n:Lcom/google/android/gms/common/api/j;

    .line 91
    return-void

    .line 72
    :cond_3
    const v0, 0x1020001

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    .line 73
    const v0, 0x7f0d0208

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->q:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->p:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 96
    const v1, 0x7f120001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 197
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->f()V

    .line 198
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0211
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v7/a/d;->onStart()V

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->n:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 159
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->n:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    .line 164
    invoke-super {p0}, Landroid/support/v7/a/d;->onStop()V

    .line 165
    return-void
.end method
