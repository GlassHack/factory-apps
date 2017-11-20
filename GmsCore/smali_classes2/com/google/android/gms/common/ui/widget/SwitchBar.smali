.class public Lcom/google/android/gms/common/ui/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Checkable;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/ui/widget/a;

.field private b:Z

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->b:Z

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->c:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->b:Z

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->c:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->b:Z

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->c:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->b:Z

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->c:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ui/widget/a;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->a:Lcom/google/android/gms/common/ui/widget/a;

    .line 106
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->b:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 110
    iput-boolean p2, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->b:Z

    iget-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->c:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->b:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1002b9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->a:Lcom/google/android/gms/common/ui/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->a:Lcom/google/android/gms/common/ui/widget/a;

    iget-boolean v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->b:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/ui/widget/a;->a_(Z)V

    .line 111
    :cond_0
    return-void

    .line 110
    :cond_1
    const v0, 0x7f1002b7

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->toggle()V

    .line 102
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, p0}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->c:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->c:Landroid/widget/TextView;

    const v1, 0x7f1002b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 67
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->d:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/gms/common/ui/widget/SwitchBar;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ui/widget/SwitchBar;->setChecked(Z)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
