.class public interface abstract Lcom/google/glass/voice/ActionController$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_OP:Lcom/google/glass/voice/ActionController$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/glass/voice/ActionController$Callback$1;

    invoke-direct {v0}, Lcom/google/glass/voice/ActionController$Callback$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/ActionController$Callback;->NO_OP:Lcom/google/glass/voice/ActionController$Callback;

    return-void
.end method


# virtual methods
.method public abstract onActionCanceled()V
.end method

.method public abstract onActionCompleted(Landroid/os/Bundle;)V
.end method
