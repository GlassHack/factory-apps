.class public Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
.super Lcom/google/android/apps/lightcycle/panorama/MessageSender;
.source "RenderedGui.java"


# static fields
.field public static final DONE_BUTTON_HORIZ_PCT:F = 0.85f

.field public static final DONE_BUTTON_VERT_PCT:F = 0.1125f

.field public static final DONE_BUTTON_WIDTH_PCT:F = 0.129f

.field public static final DONE_CLICKED:I = 0x1

.field public static final UNDO_BUTTON_HORIZ_PCT:F = 0.87f

.field public static final UNDO_BUTTON_VERT_PCT:F = 0.94f

.field public static final UNDO_BUTTON_WIDTH_PCT:F = 0.129f

.field public static final UNDO_CLICKED:I = 0x2


# instance fields
.field private doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

.field private doneButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private enabledUndoButton:Z

.field private guiManager:Lcom/google/android/apps/lightcycle/panorama/GuiManager;

.field private orientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private showOwnDoneButton:Z

.field private showOwnUndoButton:Z

.field private undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

.field private undoButtonStatusListener:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private undoButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/MessageSender;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/GuiManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->guiManager:Lcom/google/android/apps/lightcycle/panorama/GuiManager;

    .line 35
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    .line 36
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    .line 37
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 38
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 39
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonStatusListener:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 42
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->showOwnDoneButton:Z

    .line 45
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->showOwnUndoButton:Z

    .line 48
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->enabledUndoButton:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/panorama/RenderedGui;)Lcom/google/android/apps/lightcycle/panorama/Button;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/panorama/RenderedGui;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->notifyDone()V

    return-void
.end method

.method private notifyDone()V
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->notifyAll(IFLjava/lang/String;)V

    .line 219
    return-void
.end method


# virtual methods
.method public draw([F)V
    .locals 1
    .param p1, "transform"    # [F

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->guiManager:Lcom/google/android/apps/lightcycle/panorama/GuiManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->draw([F)V

    .line 244
    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->guiManager:Lcom/google/android/apps/lightcycle/panorama/GuiManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/apps/lightcycle/opengl/Shader;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shader"    # Lcom/google/android/apps/lightcycle/opengl/Shader;
    .param p3, "surfaceWidth"    # I
    .param p4, "surfaceHeight"    # I
    .param p5, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    .line 52
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->orientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 56
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 57
    .local v11, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v11, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->donebuttonglow:I

    invoke-static {v1, v2, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 60
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    const v1, 0x3e041893    # 0.129f

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 61
    .local v6, "scale":F
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/Button;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->orientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Button;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    sget v3, Lcom/google/android/apps/lightcycle/R$drawable;->donebuttonglow:I

    sget v4, Lcom/google/android/apps/lightcycle/R$drawable;->donebuttonglowselect:I

    new-instance v5, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v2, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/apps/lightcycle/panorama/Button;->init(Landroid/content/Context;IILandroid/graphics/PointF;FLcom/google/android/apps/lightcycle/opengl/Shader;II)V

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3de66666    # 0.1125f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Button;->setPosition(Landroid/graphics/PointF;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Button;->setVisible(Z)V

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->guiManager:Lcom/google/android/apps/lightcycle/panorama/GuiManager;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->addElement(Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;)I

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/RenderedGui$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/RenderedGui;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Button;->subscribe(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->undobuttonglow:I

    invoke-static {v1, v2, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 86
    const v1, 0x3e041893    # 0.129f

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 87
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/Button;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->orientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Button;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    sget v3, Lcom/google/android/apps/lightcycle/R$drawable;->undobuttonglow:I

    sget v4, Lcom/google/android/apps/lightcycle/R$drawable;->undobuttonglowselect:I

    new-instance v5, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v2, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/apps/lightcycle/panorama/Button;->init(Landroid/content/Context;IILandroid/graphics/PointF;FLcom/google/android/apps/lightcycle/opengl/Shader;II)V

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f5eb852    # 0.87f

    const v4, 0x3f70a3d7    # 0.94f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Button;->setPosition(Landroid/graphics/PointF;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Button;->setVisible(Z)V

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->guiManager:Lcom/google/android/apps/lightcycle/panorama/GuiManager;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->addElement(Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;)I

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/RenderedGui$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui$2;-><init>(Lcom/google/android/apps/lightcycle/panorama/RenderedGui;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Button;->subscribe(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V

    .line 107
    return-void
.end method

.method public notifyUndo()V
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->notifyAll(IFLjava/lang/String;)V

    .line 226
    return-void
.end method

.method public setDoneButtonVisibilityListener(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "listener":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 164
    return-void
.end method

.method public setDoneButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->showOwnDoneButton:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/Button;->setVisible(Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 121
    :cond_1
    return-void

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowOwnDoneButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->showOwnDoneButton:Z

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/Button;->setVisible(Z)V

    .line 199
    :cond_0
    return-void
.end method

.method public setShowOwnUndoButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->showOwnUndoButton:Z

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/Button;->setVisible(Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public setUndoButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->enabledUndoButton:Z

    if-ne p1, v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->enabledUndoButton:Z

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/Button;->setEnabled(Z)V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonStatusListener:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonStatusListener:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUndoButtonStatusListener(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "listener":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonStatusListener:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 186
    return-void
.end method

.method public setUndoButtonVisibilityListener(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "listener":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 175
    return-void
.end method

.method public setUndoButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButton:Lcom/google/android/apps/lightcycle/panorama/Button;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->showOwnUndoButton:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/Button;->setVisible(Z)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 135
    :cond_1
    return-void

    .line 130
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
