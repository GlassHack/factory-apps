.class public Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;
.super Landroid/os/Binder;
.source "PhoneCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/PhoneCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneCallServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallService;


# direct methods
.method public constructor <init>(Lcom/google/glass/phone/PhoneCallService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/phone/PhoneCallService;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/google/glass/phone/PhoneCallService;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;->this$0:Lcom/google/glass/phone/PhoneCallService;

    return-object v0
.end method
