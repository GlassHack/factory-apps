.class Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;
.super Ljava/lang/Object;
.source "SystemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Window"
.end annotation


# instance fields
.field end:I

.field start:I

.field final synthetic this$1:Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1118
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->this$1:Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    iput v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->start:I

    .line 1120
    iput v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->end:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;Lcom/google/android/gsf/update/SystemUpdateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;
    .param p2, "x1"    # Lcom/google/android/gsf/update/SystemUpdateService$1;

    .prologue
    .line 1118
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;-><init>(Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;)V

    return-void
.end method
