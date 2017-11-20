.class Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$2;
.super Ljava/lang/Object;
.source "PhoneCallLiveCardMenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$2;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$2;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->finish()V

    .line 185
    return-void
.end method
