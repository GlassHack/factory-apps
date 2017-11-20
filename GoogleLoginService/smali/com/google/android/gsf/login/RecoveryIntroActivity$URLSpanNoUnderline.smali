.class Lcom/google/android/gsf/login/RecoveryIntroActivity$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "RecoveryIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/RecoveryIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLSpanNoUnderline"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/RecoveryIntroActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/login/RecoveryIntroActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity$URLSpanNoUnderline;->this$0:Lcom/google/android/gsf/login/RecoveryIntroActivity;

    .line 114
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 119
    return-void
.end method
