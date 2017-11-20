.class public final Lcom/google/glass/home/voice/MainMenuCommandReceiver$EntityCommandReceiver;
.super Lcom/google/glass/home/voice/MainMenuCommandReceiver;
.source "MainMenuCommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/MainMenuCommandReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntityCommandReceiver"
.end annotation


# instance fields
.field private final commandType:I

.field private final entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)V
    .locals 1
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p2, "commandType"    # I

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/MainMenuCommandReceiver;-><init>(Z)V

    .line 52
    iput-object p1, p0, Lcom/google/glass/home/voice/MainMenuCommandReceiver$EntityCommandReceiver;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 53
    iput p2, p0, Lcom/google/glass/home/voice/MainMenuCommandReceiver$EntityCommandReceiver;->commandType:I

    .line 54
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;)V
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 58
    move-object v0, p1

    check-cast v0, Lcom/google/glass/home/voice/MainMenuEntityItemView;

    .line 59
    .local v0, "itemView":Lcom/google/glass/home/voice/MainMenuEntityItemView;
    iget-object v1, p0, Lcom/google/glass/home/voice/MainMenuCommandReceiver$EntityCommandReceiver;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/MainMenuCommandReceiver$EntityCommandReceiver;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->bind(Ljava/lang/String;[B)V

    .line 60
    return-void
.end method

.method public createTouchMenuView(Landroid/view/LayoutInflater;Lcom/google/glass/app/GlassActivity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "layoutInflator"    # Landroid/view/LayoutInflater;
    .param p2, "environment"    # Lcom/google/glass/app/GlassActivity;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    sget v1, Lcom/google/glass/home/R$layout;->touch_menu_entity_item:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/MainMenuEntityItemView;

    .line 67
    .local v0, "itemView":Lcom/google/glass/home/voice/MainMenuEntityItemView;
    invoke-virtual {v0, p2}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->setGlassActivity(Lcom/google/glass/app/GlassActivity;)V

    .line 68
    iget v1, p0, Lcom/google/glass/home/voice/MainMenuCommandReceiver$EntityCommandReceiver;->commandType:I

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->setCommandType(I)V

    .line 69
    return-object v0
.end method
