.class public interface abstract Lcom/google/glass/voice/menu/VoiceMenuBuilder;
.super Ljava/lang/Object;
.source "VoiceMenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;
    }
.end annotation


# static fields
.field public static final EXTRA_ACTION_CONTROLLER_CLASS:Ljava/lang/String; = "action_controller_class"

.field public static final EXTRA_ENTITY:Ljava/lang/String; = "entity"

.field public static final EXTRA_ENTITY_SET_ORDINAL:Ljava/lang/String; = "entity_set_ordinal"

.field public static final EXTRA_FEATURE:Ljava/lang/String; = "feature"

.field public static final EXTRA_RESULT_BUNDLE:Ljava/lang/String; = "result_bundle"

.field public static final EXTRA_TIMELINE_ITEM:Ljava/lang/String; = "timeline_item"

.field public static final FEATURE_ACTION_CONTROLLER:Ljava/lang/String; = "action_controller"

.field public static final FEATURE_OVERFLOW:Ljava/lang/String; = "overflow"


# virtual methods
.method public abstract add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/CommandValue;Landroid/content/Intent;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V
.end method

.method public varargs abstract add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V
.end method

.method public varargs abstract add(Ljava/lang/String;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addContextHint(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end method

.method public abstract createVoiceMenuDialog()Lcom/google/glass/voice/menu/IVoiceMenuDialog;
.end method

.method public abstract getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
.end method

.method public abstract isEmpty()Z
.end method
